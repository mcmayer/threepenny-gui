-- | Predefined DOM elements, for convenience.
module Graphics.UI.Threepenny.Elements where

import Control.Monad
import Prelude hiding (div)
import Graphics.UI.Threepenny.Core
-- import Graphics.UI.Threepenny.Internal.Core

-- | Add a stylesheet to the head.
addStyleSheet :: Window -> FilePath -> IO ()
addStyleSheet w filename = void $ do
  head <- getHead w
  (newElement w "link"
    # set (attr "rel" ) "stylesheet"
    # set (attr "type") "text/css"
    # set (attr "href") ("/static/css/" ++ filename))
    >>= appendTo head

-- | Make a new anchor, @a@.
anchor :: Window -> IO Element
anchor = flip newElement "a"

-- | Make a new button.
button :: Window -> IO Element
button = flip newElement "button"

-- | Make a new form.
form :: Window -> IO Element
form = flip newElement "form"

-- | Make a new horizontal rule, @hr@.
hr :: Window -> IO Element
hr = flip newElement "hr"

-- | Make a new label.
label :: Window -> IO Element
label = flip newElement "label"

-- | Make a new image, @img@.
img :: Window -> IO Element
img = flip newElement "img"

-- | Make a new input element.
input :: Window -> IO Element
input = flip newElement "input"

-- | Make a new @div@ element.
div :: Window -> IO Element
div = flip newElement "div"

-- | Make a new span.
span :: Window -> IO Element
span = flip newElement "span"

-- | Make a new table, @table@.
table :: Window -> IO Element
table = flip newElement "table"

-- | Make a new table row, @tr@.
tableRow :: Window -> IO Element
tableRow = flip newElement "tr"

-- | Make a new table cell, @td@.
tableCell :: Window -> IO Element
tableCell = flip newElement "td"

-- | Make a new textarea.
textarea :: Window -> IO Element
textarea = flip newElement "textarea"


