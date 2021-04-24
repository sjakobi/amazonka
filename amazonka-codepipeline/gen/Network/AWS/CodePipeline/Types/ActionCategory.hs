{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionCategory
  ( ActionCategory
      ( ..,
        Approval,
        Build,
        Deploy,
        Invoke,
        Source,
        Test
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionCategory = ActionCategory' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Approval :: ActionCategory
pattern Approval = ActionCategory' "Approval"

pattern Build :: ActionCategory
pattern Build = ActionCategory' "Build"

pattern Deploy :: ActionCategory
pattern Deploy = ActionCategory' "Deploy"

pattern Invoke :: ActionCategory
pattern Invoke = ActionCategory' "Invoke"

pattern Source :: ActionCategory
pattern Source = ActionCategory' "Source"

pattern Test :: ActionCategory
pattern Test = ActionCategory' "Test"

{-# COMPLETE
  Approval,
  Build,
  Deploy,
  Invoke,
  Source,
  Test,
  ActionCategory'
  #-}

instance FromText ActionCategory where
  parser = (ActionCategory' . mk) <$> takeText

instance ToText ActionCategory where
  toText (ActionCategory' ci) = original ci

instance Hashable ActionCategory

instance NFData ActionCategory

instance ToByteString ActionCategory

instance ToQuery ActionCategory

instance ToHeader ActionCategory

instance ToJSON ActionCategory where
  toJSON = toJSONText

instance FromJSON ActionCategory where
  parseJSON = parseJSONText "ActionCategory"
