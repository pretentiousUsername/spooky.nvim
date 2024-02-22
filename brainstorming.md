+ Coloring and stuff
    - Grouping colors by relative contrasts.
        * That might use a lot of resources---if you do it straight up every 
          time you make a new theme.
        * Take a look at the [WebAIM](https://webaim.org/articles/contrast/)
        guidelines. Even if users aren't forced to abide by them, they still 
        have helpful documentation---perhaps enable WebAIM standards by 
        default, just to air on the side of accessibility.
        * Maybe use graph-theory wizardry, if that's possible?
        * This might be ridiculously hard, but if all-else fails, look into
          seeing what colors PyWal left out and use those for something. (Would
          that even be practical?)
    - Maybe look into ways to interpolate colors? Someone better versed in color
      theory would be good to ask about this.
    - Caching colors.
+ Infrastructure
    - PyWal's author is on hiatus right now, and PyWal itself hasn't been
      updated in about three years. Maybe look into using
      [lule](https://github.com/warpwm/lule)? People would fork PyWal if it just
      stops working, right?
    - Would there be some way to automate particular color choices? For example,
      could you make a parameterized function that automates color choices?---I
      doubt it, but it could be useful.
+ Theming
    - Make user-generated templates for color palettes---that would work 
      perfectly with contrast grouping.
    - Add something in there that prevents foreground and background colors to
      have low contrasts.
