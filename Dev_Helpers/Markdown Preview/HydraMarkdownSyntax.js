hljs.registerLanguage('hydra', function(hljs){
    return {
      case_insensitive: false, 
      keywords: 'for if while in import class as priv gen function return extends end',
      contains: [
        {
          className: 'string',
          begin: '"', end: '"'
        },
        {
          className: 'string',
          begin: "'", end: "'"
        },
        hljs.C_LINE_COMMENT_MODE
      ]
    }
});