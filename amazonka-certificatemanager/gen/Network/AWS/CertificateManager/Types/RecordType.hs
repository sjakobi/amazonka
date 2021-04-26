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
-- Module      : Network.AWS.CertificateManager.Types.RecordType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.RecordType
  ( RecordType
      ( ..,
        RecordTypeCNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecordType = RecordType'
  { fromRecordType ::
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

pattern RecordTypeCNAME :: RecordType
pattern RecordTypeCNAME = RecordType' "CNAME"

{-# COMPLETE
  RecordTypeCNAME,
  RecordType'
  #-}

instance Prelude.FromText RecordType where
  parser = RecordType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecordType where
  toText (RecordType' x) = x

instance Prelude.Hashable RecordType

instance Prelude.NFData RecordType

instance Prelude.ToByteString RecordType

instance Prelude.ToQuery RecordType

instance Prelude.ToHeader RecordType

instance Prelude.FromJSON RecordType where
  parseJSON = Prelude.parseJSONText "RecordType"
