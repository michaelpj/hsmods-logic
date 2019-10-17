module Top where
  module M1 where
    -- M2 shadows enclosing definition
    module M2 where

  module M2 where

  module M3 where
    import M1
    -- M2 ambiguous: imported and also inherited from enclosing

