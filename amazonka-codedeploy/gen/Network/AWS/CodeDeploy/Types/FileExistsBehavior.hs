{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.FileExistsBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.FileExistsBehavior
  ( FileExistsBehavior
      ( ..,
        Disallow,
        Overwrite,
        Retain
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FileExistsBehavior
  = FileExistsBehavior'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disallow :: FileExistsBehavior
pattern Disallow = FileExistsBehavior' "DISALLOW"

pattern Overwrite :: FileExistsBehavior
pattern Overwrite = FileExistsBehavior' "OVERWRITE"

pattern Retain :: FileExistsBehavior
pattern Retain = FileExistsBehavior' "RETAIN"

{-# COMPLETE
  Disallow,
  Overwrite,
  Retain,
  FileExistsBehavior'
  #-}

instance FromText FileExistsBehavior where
  parser = (FileExistsBehavior' . mk) <$> takeText

instance ToText FileExistsBehavior where
  toText (FileExistsBehavior' ci) = original ci

instance Hashable FileExistsBehavior

instance NFData FileExistsBehavior

instance ToByteString FileExistsBehavior

instance ToQuery FileExistsBehavior

instance ToHeader FileExistsBehavior

instance ToJSON FileExistsBehavior where
  toJSON = toJSONText

instance FromJSON FileExistsBehavior where
  parseJSON = parseJSONText "FileExistsBehavior"
