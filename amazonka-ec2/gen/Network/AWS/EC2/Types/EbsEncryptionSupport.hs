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
-- Module      : Network.AWS.EC2.Types.EbsEncryptionSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EbsEncryptionSupport
  ( EbsEncryptionSupport
      ( ..,
        EbsEncryptionSupportSupported,
        EbsEncryptionSupportUnsupported
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype EbsEncryptionSupport = EbsEncryptionSupport'
  { fromEbsEncryptionSupport ::
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

pattern EbsEncryptionSupportSupported :: EbsEncryptionSupport
pattern EbsEncryptionSupportSupported = EbsEncryptionSupport' "supported"

pattern EbsEncryptionSupportUnsupported :: EbsEncryptionSupport
pattern EbsEncryptionSupportUnsupported = EbsEncryptionSupport' "unsupported"

{-# COMPLETE
  EbsEncryptionSupportSupported,
  EbsEncryptionSupportUnsupported,
  EbsEncryptionSupport'
  #-}

instance Prelude.FromText EbsEncryptionSupport where
  parser = EbsEncryptionSupport' Prelude.<$> Prelude.takeText

instance Prelude.ToText EbsEncryptionSupport where
  toText (EbsEncryptionSupport' x) = x

instance Prelude.Hashable EbsEncryptionSupport

instance Prelude.NFData EbsEncryptionSupport

instance Prelude.ToByteString EbsEncryptionSupport

instance Prelude.ToQuery EbsEncryptionSupport

instance Prelude.ToHeader EbsEncryptionSupport

instance Prelude.FromXML EbsEncryptionSupport where
  parseXML = Prelude.parseXMLText "EbsEncryptionSupport"
