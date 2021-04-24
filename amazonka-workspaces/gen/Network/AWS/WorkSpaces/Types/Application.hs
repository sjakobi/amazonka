{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.Application
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.Application
  ( Application
      ( ..,
        MicrosoftOffice2016,
        MicrosoftOffice2019
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Application = Application' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MicrosoftOffice2016 :: Application
pattern MicrosoftOffice2016 = Application' "Microsoft_Office_2016"

pattern MicrosoftOffice2019 :: Application
pattern MicrosoftOffice2019 = Application' "Microsoft_Office_2019"

{-# COMPLETE
  MicrosoftOffice2016,
  MicrosoftOffice2019,
  Application'
  #-}

instance FromText Application where
  parser = (Application' . mk) <$> takeText

instance ToText Application where
  toText (Application' ci) = original ci

instance Hashable Application

instance NFData Application

instance ToByteString Application

instance ToQuery Application

instance ToHeader Application

instance ToJSON Application where
  toJSON = toJSONText
