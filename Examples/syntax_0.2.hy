import std.Emitter
import ./gui_base.hy as Base

export class Test extends Base, Emitter

  Test(m){
    supers()

    @node_chan = <-5->
    @mode = m
    @_running = false

    @on('window:ready', (){
        @renderGUI()
    })

  }

  function content(){
    @div(null,'.someclass', '#someid', (c){
      @div(c '.someclass2', '#someid2', (c){
        @span(c '.text-highlight', 'categoryHeader')
        @span(c '.text-info', 'categorySummary')
      })
    })
  }

  function afterAttatch(onDom){
    if onDom then
      @addTreeMap()
    end
  }

  function renderGUI(){
    spawn @createNodes()
    @renderNodes()

    @emit('gui:rendered')
  }

  function createNodes(){
    var categories, category_start, category_name, category;

    categories = {};

    for event_name, details in @eventLog do
      if @ignoredEvents.contains(event_name) then continue

      category_start = event_name.indexOf(':');

      if category_start is -1 then
        category_name = 'uncategorized'
      else
        category_name = @humanizeEventName(event_name[0:category_start])
        category = categories[category_name]
      end

      if !category == then
        category = {
          name: @humanizeEventName(category_name),
          children: []
        }

        categories[category_name] = category;
      end

      category.children.push(@content)
      category -> @node_chan
    end

    close(@node_chan)
  }

  function renderNodes(){
    for node in @node_chan do
      @render(node)
    end
    open(@node_chan)
  }

end
