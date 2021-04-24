{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ResourceSignalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ResourceSignalStatus
  ( ResourceSignalStatus
      ( ..,
        Failure,
        Success
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceSignalStatus
  = ResourceSignalStatus'
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

pattern Failure :: ResourceSignalStatus
pattern Failure = ResourceSignalStatus' "FAILURE"

pattern Success :: ResourceSignalStatus
pattern Success = ResourceSignalStatus' "SUCCESS"

{-# COMPLETE
  Failure,
  Success,
  ResourceSignalStatus'
  #-}

instance FromText ResourceSignalStatus where
  parser = (ResourceSignalStatus' . mk) <$> takeText

instance ToText ResourceSignalStatus where
  toText (ResourceSignalStatus' ci) = original ci

instance Hashable ResourceSignalStatus

instance NFData ResourceSignalStatus

instance ToByteString ResourceSignalStatus

instance ToQuery ResourceSignalStatus

instance ToHeader ResourceSignalStatus
