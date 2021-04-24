{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.CertificateState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.CertificateState
  ( CertificateState
      ( ..,
        DeregisterFailed,
        Deregistered,
        Deregistering,
        RegisterFailed,
        Registered,
        Registering
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateState = CertificateState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DeregisterFailed :: CertificateState
pattern DeregisterFailed = CertificateState' "DeregisterFailed"

pattern Deregistered :: CertificateState
pattern Deregistered = CertificateState' "Deregistered"

pattern Deregistering :: CertificateState
pattern Deregistering = CertificateState' "Deregistering"

pattern RegisterFailed :: CertificateState
pattern RegisterFailed = CertificateState' "RegisterFailed"

pattern Registered :: CertificateState
pattern Registered = CertificateState' "Registered"

pattern Registering :: CertificateState
pattern Registering = CertificateState' "Registering"

{-# COMPLETE
  DeregisterFailed,
  Deregistered,
  Deregistering,
  RegisterFailed,
  Registered,
  Registering,
  CertificateState'
  #-}

instance FromText CertificateState where
  parser = (CertificateState' . mk) <$> takeText

instance ToText CertificateState where
  toText (CertificateState' ci) = original ci

instance Hashable CertificateState

instance NFData CertificateState

instance ToByteString CertificateState

instance ToQuery CertificateState

instance ToHeader CertificateState

instance FromJSON CertificateState where
  parseJSON = parseJSONText "CertificateState"
