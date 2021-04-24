{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AWSJobAbortCriteriaAbortAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AWSJobAbortCriteriaAbortAction
  ( AWSJobAbortCriteriaAbortAction
      ( ..,
        AJACAACancel
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AWSJobAbortCriteriaAbortAction
  = AWSJobAbortCriteriaAbortAction'
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

pattern AJACAACancel :: AWSJobAbortCriteriaAbortAction
pattern AJACAACancel = AWSJobAbortCriteriaAbortAction' "CANCEL"

{-# COMPLETE
  AJACAACancel,
  AWSJobAbortCriteriaAbortAction'
  #-}

instance FromText AWSJobAbortCriteriaAbortAction where
  parser = (AWSJobAbortCriteriaAbortAction' . mk) <$> takeText

instance ToText AWSJobAbortCriteriaAbortAction where
  toText (AWSJobAbortCriteriaAbortAction' ci) = original ci

instance Hashable AWSJobAbortCriteriaAbortAction

instance NFData AWSJobAbortCriteriaAbortAction

instance ToByteString AWSJobAbortCriteriaAbortAction

instance ToQuery AWSJobAbortCriteriaAbortAction

instance ToHeader AWSJobAbortCriteriaAbortAction

instance ToJSON AWSJobAbortCriteriaAbortAction where
  toJSON = toJSONText
