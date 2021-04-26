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
-- Module      : Network.AWS.KMS.Types.OriginType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.OriginType
  ( OriginType
      ( ..,
        OriginTypeAWSCLOUDHSM,
        OriginTypeAWSKMS,
        OriginTypeEXTERNAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OriginType = OriginType'
  { fromOriginType ::
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

pattern OriginTypeAWSCLOUDHSM :: OriginType
pattern OriginTypeAWSCLOUDHSM = OriginType' "AWS_CLOUDHSM"

pattern OriginTypeAWSKMS :: OriginType
pattern OriginTypeAWSKMS = OriginType' "AWS_KMS"

pattern OriginTypeEXTERNAL :: OriginType
pattern OriginTypeEXTERNAL = OriginType' "EXTERNAL"

{-# COMPLETE
  OriginTypeAWSCLOUDHSM,
  OriginTypeAWSKMS,
  OriginTypeEXTERNAL,
  OriginType'
  #-}

instance Prelude.FromText OriginType where
  parser = OriginType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OriginType where
  toText (OriginType' x) = x

instance Prelude.Hashable OriginType

instance Prelude.NFData OriginType

instance Prelude.ToByteString OriginType

instance Prelude.ToQuery OriginType

instance Prelude.ToHeader OriginType

instance Prelude.ToJSON OriginType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OriginType where
  parseJSON = Prelude.parseJSONText "OriginType"
