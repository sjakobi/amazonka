{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeAction
  ( ChangeAction
      ( ..,
        CAAdd,
        CADynamic,
        CAImport,
        CAModify,
        CARemove
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChangeAction = ChangeAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CAAdd :: ChangeAction
pattern CAAdd = ChangeAction' "Add"

pattern CADynamic :: ChangeAction
pattern CADynamic = ChangeAction' "Dynamic"

pattern CAImport :: ChangeAction
pattern CAImport = ChangeAction' "Import"

pattern CAModify :: ChangeAction
pattern CAModify = ChangeAction' "Modify"

pattern CARemove :: ChangeAction
pattern CARemove = ChangeAction' "Remove"

{-# COMPLETE
  CAAdd,
  CADynamic,
  CAImport,
  CAModify,
  CARemove,
  ChangeAction'
  #-}

instance FromText ChangeAction where
  parser = (ChangeAction' . mk) <$> takeText

instance ToText ChangeAction where
  toText (ChangeAction' ci) = original ci

instance Hashable ChangeAction

instance NFData ChangeAction

instance ToByteString ChangeAction

instance ToQuery ChangeAction

instance ToHeader ChangeAction

instance FromXML ChangeAction where
  parseXML = parseXMLText "ChangeAction"
