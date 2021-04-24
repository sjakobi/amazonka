{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ServerCertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ServerCertificateStatus
  ( ServerCertificateStatus
      ( ..,
        Invalid,
        Valid
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServerCertificateStatus
  = ServerCertificateStatus'
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

pattern Invalid :: ServerCertificateStatus
pattern Invalid = ServerCertificateStatus' "INVALID"

pattern Valid :: ServerCertificateStatus
pattern Valid = ServerCertificateStatus' "VALID"

{-# COMPLETE
  Invalid,
  Valid,
  ServerCertificateStatus'
  #-}

instance FromText ServerCertificateStatus where
  parser = (ServerCertificateStatus' . mk) <$> takeText

instance ToText ServerCertificateStatus where
  toText (ServerCertificateStatus' ci) = original ci

instance Hashable ServerCertificateStatus

instance NFData ServerCertificateStatus

instance ToByteString ServerCertificateStatus

instance ToQuery ServerCertificateStatus

instance ToHeader ServerCertificateStatus

instance FromJSON ServerCertificateStatus where
  parseJSON = parseJSONText "ServerCertificateStatus"
