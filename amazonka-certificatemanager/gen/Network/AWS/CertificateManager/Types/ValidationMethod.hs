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
-- Module      : Network.AWS.CertificateManager.Types.ValidationMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.ValidationMethod
  ( ValidationMethod
      ( ..,
        ValidationMethodDNS,
        ValidationMethodEMAIL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ValidationMethod = ValidationMethod'
  { fromValidationMethod ::
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

pattern ValidationMethodDNS :: ValidationMethod
pattern ValidationMethodDNS = ValidationMethod' "DNS"

pattern ValidationMethodEMAIL :: ValidationMethod
pattern ValidationMethodEMAIL = ValidationMethod' "EMAIL"

{-# COMPLETE
  ValidationMethodDNS,
  ValidationMethodEMAIL,
  ValidationMethod'
  #-}

instance Prelude.FromText ValidationMethod where
  parser = ValidationMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText ValidationMethod where
  toText (ValidationMethod' x) = x

instance Prelude.Hashable ValidationMethod

instance Prelude.NFData ValidationMethod

instance Prelude.ToByteString ValidationMethod

instance Prelude.ToQuery ValidationMethod

instance Prelude.ToHeader ValidationMethod

instance Prelude.ToJSON ValidationMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ValidationMethod where
  parseJSON = Prelude.parseJSONText "ValidationMethod"
