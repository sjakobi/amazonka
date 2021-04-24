{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CertificateStatus
  ( CertificateStatus
      ( ..,
        CSActive,
        CSInactive,
        CSPendingActivation,
        CSPendingTransfer,
        CSRegisterInactive,
        CSRevoked
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateStatus = CertificateStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSActive :: CertificateStatus
pattern CSActive = CertificateStatus' "ACTIVE"

pattern CSInactive :: CertificateStatus
pattern CSInactive = CertificateStatus' "INACTIVE"

pattern CSPendingActivation :: CertificateStatus
pattern CSPendingActivation = CertificateStatus' "PENDING_ACTIVATION"

pattern CSPendingTransfer :: CertificateStatus
pattern CSPendingTransfer = CertificateStatus' "PENDING_TRANSFER"

pattern CSRegisterInactive :: CertificateStatus
pattern CSRegisterInactive = CertificateStatus' "REGISTER_INACTIVE"

pattern CSRevoked :: CertificateStatus
pattern CSRevoked = CertificateStatus' "REVOKED"

{-# COMPLETE
  CSActive,
  CSInactive,
  CSPendingActivation,
  CSPendingTransfer,
  CSRegisterInactive,
  CSRevoked,
  CertificateStatus'
  #-}

instance FromText CertificateStatus where
  parser = (CertificateStatus' . mk) <$> takeText

instance ToText CertificateStatus where
  toText (CertificateStatus' ci) = original ci

instance Hashable CertificateStatus

instance NFData CertificateStatus

instance ToByteString CertificateStatus

instance ToQuery CertificateStatus

instance ToHeader CertificateStatus

instance ToJSON CertificateStatus where
  toJSON = toJSONText

instance FromJSON CertificateStatus where
  parseJSON = parseJSONText "CertificateStatus"
