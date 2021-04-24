{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RuleAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RuleAction
  ( RuleAction
      ( ..,
        Allow,
        Deny
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data RuleAction = RuleAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Allow :: RuleAction
pattern Allow = RuleAction' "allow"

pattern Deny :: RuleAction
pattern Deny = RuleAction' "deny"

{-# COMPLETE
  Allow,
  Deny,
  RuleAction'
  #-}

instance FromText RuleAction where
  parser = (RuleAction' . mk) <$> takeText

instance ToText RuleAction where
  toText (RuleAction' ci) = original ci

instance Hashable RuleAction

instance NFData RuleAction

instance ToByteString RuleAction

instance ToQuery RuleAction

instance ToHeader RuleAction

instance FromXML RuleAction where
  parseXML = parseXMLText "RuleAction"
