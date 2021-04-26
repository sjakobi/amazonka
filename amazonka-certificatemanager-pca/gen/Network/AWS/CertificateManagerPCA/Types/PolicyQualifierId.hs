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
-- Module      : Network.AWS.CertificateManagerPCA.Types.PolicyQualifierId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.PolicyQualifierId
  ( PolicyQualifierId
      ( ..,
        PolicyQualifierIdCPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyQualifierId = PolicyQualifierId'
  { fromPolicyQualifierId ::
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

pattern PolicyQualifierIdCPS :: PolicyQualifierId
pattern PolicyQualifierIdCPS = PolicyQualifierId' "CPS"

{-# COMPLETE
  PolicyQualifierIdCPS,
  PolicyQualifierId'
  #-}

instance Prelude.FromText PolicyQualifierId where
  parser = PolicyQualifierId' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyQualifierId where
  toText (PolicyQualifierId' x) = x

instance Prelude.Hashable PolicyQualifierId

instance Prelude.NFData PolicyQualifierId

instance Prelude.ToByteString PolicyQualifierId

instance Prelude.ToQuery PolicyQualifierId

instance Prelude.ToHeader PolicyQualifierId

instance Prelude.ToJSON PolicyQualifierId where
  toJSON = Prelude.toJSONText
