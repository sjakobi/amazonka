{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ResetImageAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ResetImageAttributeName
  ( ResetImageAttributeName
      ( ..,
        LaunchPermission
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ResetImageAttributeName
  = ResetImageAttributeName'
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

pattern LaunchPermission :: ResetImageAttributeName
pattern LaunchPermission = ResetImageAttributeName' "launchPermission"

{-# COMPLETE
  LaunchPermission,
  ResetImageAttributeName'
  #-}

instance FromText ResetImageAttributeName where
  parser = (ResetImageAttributeName' . mk) <$> takeText

instance ToText ResetImageAttributeName where
  toText (ResetImageAttributeName' ci) = original ci

instance Hashable ResetImageAttributeName

instance NFData ResetImageAttributeName

instance ToByteString ResetImageAttributeName

instance ToQuery ResetImageAttributeName

instance ToHeader ResetImageAttributeName
