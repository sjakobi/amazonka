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
-- Module      : Network.AWS.IoT.Types.ServerCertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ServerCertificateStatus
  ( ServerCertificateStatus
      ( ..,
        ServerCertificateStatusINVALID,
        ServerCertificateStatusVALID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServerCertificateStatus = ServerCertificateStatus'
  { fromServerCertificateStatus ::
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

pattern ServerCertificateStatusINVALID :: ServerCertificateStatus
pattern ServerCertificateStatusINVALID = ServerCertificateStatus' "INVALID"

pattern ServerCertificateStatusVALID :: ServerCertificateStatus
pattern ServerCertificateStatusVALID = ServerCertificateStatus' "VALID"

{-# COMPLETE
  ServerCertificateStatusINVALID,
  ServerCertificateStatusVALID,
  ServerCertificateStatus'
  #-}

instance Prelude.FromText ServerCertificateStatus where
  parser = ServerCertificateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServerCertificateStatus where
  toText (ServerCertificateStatus' x) = x

instance Prelude.Hashable ServerCertificateStatus

instance Prelude.NFData ServerCertificateStatus

instance Prelude.ToByteString ServerCertificateStatus

instance Prelude.ToQuery ServerCertificateStatus

instance Prelude.ToHeader ServerCertificateStatus

instance Prelude.FromJSON ServerCertificateStatus where
  parseJSON = Prelude.parseJSONText "ServerCertificateStatus"
