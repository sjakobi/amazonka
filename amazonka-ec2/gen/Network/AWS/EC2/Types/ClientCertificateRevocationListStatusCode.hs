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
-- Module      : Network.AWS.EC2.Types.ClientCertificateRevocationListStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientCertificateRevocationListStatusCode
  ( ClientCertificateRevocationListStatusCode
      ( ..,
        ClientCertificateRevocationListStatusCodeActive,
        ClientCertificateRevocationListStatusCodePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ClientCertificateRevocationListStatusCode = ClientCertificateRevocationListStatusCode'
  { fromClientCertificateRevocationListStatusCode ::
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

pattern ClientCertificateRevocationListStatusCodeActive :: ClientCertificateRevocationListStatusCode
pattern ClientCertificateRevocationListStatusCodeActive = ClientCertificateRevocationListStatusCode' "active"

pattern ClientCertificateRevocationListStatusCodePending :: ClientCertificateRevocationListStatusCode
pattern ClientCertificateRevocationListStatusCodePending = ClientCertificateRevocationListStatusCode' "pending"

{-# COMPLETE
  ClientCertificateRevocationListStatusCodeActive,
  ClientCertificateRevocationListStatusCodePending,
  ClientCertificateRevocationListStatusCode'
  #-}

instance Prelude.FromText ClientCertificateRevocationListStatusCode where
  parser = ClientCertificateRevocationListStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientCertificateRevocationListStatusCode where
  toText (ClientCertificateRevocationListStatusCode' x) = x

instance Prelude.Hashable ClientCertificateRevocationListStatusCode

instance Prelude.NFData ClientCertificateRevocationListStatusCode

instance Prelude.ToByteString ClientCertificateRevocationListStatusCode

instance Prelude.ToQuery ClientCertificateRevocationListStatusCode

instance Prelude.ToHeader ClientCertificateRevocationListStatusCode

instance Prelude.FromXML ClientCertificateRevocationListStatusCode where
  parseXML = Prelude.parseXMLText "ClientCertificateRevocationListStatusCode"
