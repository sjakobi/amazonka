{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        CertificateStateDeregisterFailed,
        CertificateStateDeregistered,
        CertificateStateDeregistering,
        CertificateStateRegisterFailed,
        CertificateStateRegistered,
        CertificateStateRegistering
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateState = CertificateState'
  { fromCertificateState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CertificateStateDeregisterFailed :: CertificateState
pattern CertificateStateDeregisterFailed = CertificateState' "DeregisterFailed"

pattern CertificateStateDeregistered :: CertificateState
pattern CertificateStateDeregistered = CertificateState' "Deregistered"

pattern CertificateStateDeregistering :: CertificateState
pattern CertificateStateDeregistering = CertificateState' "Deregistering"

pattern CertificateStateRegisterFailed :: CertificateState
pattern CertificateStateRegisterFailed = CertificateState' "RegisterFailed"

pattern CertificateStateRegistered :: CertificateState
pattern CertificateStateRegistered = CertificateState' "Registered"

pattern CertificateStateRegistering :: CertificateState
pattern CertificateStateRegistering = CertificateState' "Registering"

{-# COMPLETE
  CertificateStateDeregisterFailed,
  CertificateStateDeregistered,
  CertificateStateDeregistering,
  CertificateStateRegisterFailed,
  CertificateStateRegistered,
  CertificateStateRegistering,
  CertificateState'
  #-}

instance Prelude.FromText CertificateState where
  parser = CertificateState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateState where
  toText (CertificateState' x) = x

instance Prelude.Hashable CertificateState

instance Prelude.NFData CertificateState

instance Prelude.ToByteString CertificateState

instance Prelude.ToQuery CertificateState

instance Prelude.ToHeader CertificateState

instance Prelude.FromJSON CertificateState where
  parseJSON = Prelude.parseJSONText "CertificateState"
