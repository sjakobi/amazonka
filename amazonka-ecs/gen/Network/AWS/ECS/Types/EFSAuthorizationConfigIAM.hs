{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.EFSAuthorizationConfigIAM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.EFSAuthorizationConfigIAM
  ( EFSAuthorizationConfigIAM
      ( ..,
        EFSACIDisabled,
        EFSACIEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EFSAuthorizationConfigIAM
  = EFSAuthorizationConfigIAM'
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

pattern EFSACIDisabled :: EFSAuthorizationConfigIAM
pattern EFSACIDisabled = EFSAuthorizationConfigIAM' "DISABLED"

pattern EFSACIEnabled :: EFSAuthorizationConfigIAM
pattern EFSACIEnabled = EFSAuthorizationConfigIAM' "ENABLED"

{-# COMPLETE
  EFSACIDisabled,
  EFSACIEnabled,
  EFSAuthorizationConfigIAM'
  #-}

instance FromText EFSAuthorizationConfigIAM where
  parser = (EFSAuthorizationConfigIAM' . mk) <$> takeText

instance ToText EFSAuthorizationConfigIAM where
  toText (EFSAuthorizationConfigIAM' ci) = original ci

instance Hashable EFSAuthorizationConfigIAM

instance NFData EFSAuthorizationConfigIAM

instance ToByteString EFSAuthorizationConfigIAM

instance ToQuery EFSAuthorizationConfigIAM

instance ToHeader EFSAuthorizationConfigIAM

instance ToJSON EFSAuthorizationConfigIAM where
  toJSON = toJSONText

instance FromJSON EFSAuthorizationConfigIAM where
  parseJSON = parseJSONText "EFSAuthorizationConfigIAM"
