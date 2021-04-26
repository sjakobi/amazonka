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
-- Module      : Network.AWS.Batch.Types.CRType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.CRType
  ( CRType
      ( ..,
        CRTypeEC2,
        CRTypeFARGATE,
        CRTypeFARGATESPOT,
        CRTypeSPOT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CRType = CRType' {fromCRType :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CRTypeEC2 :: CRType
pattern CRTypeEC2 = CRType' "EC2"

pattern CRTypeFARGATE :: CRType
pattern CRTypeFARGATE = CRType' "FARGATE"

pattern CRTypeFARGATESPOT :: CRType
pattern CRTypeFARGATESPOT = CRType' "FARGATE_SPOT"

pattern CRTypeSPOT :: CRType
pattern CRTypeSPOT = CRType' "SPOT"

{-# COMPLETE
  CRTypeEC2,
  CRTypeFARGATE,
  CRTypeFARGATESPOT,
  CRTypeSPOT,
  CRType'
  #-}

instance Prelude.FromText CRType where
  parser = CRType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CRType where
  toText (CRType' x) = x

instance Prelude.Hashable CRType

instance Prelude.NFData CRType

instance Prelude.ToByteString CRType

instance Prelude.ToQuery CRType

instance Prelude.ToHeader CRType

instance Prelude.ToJSON CRType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CRType where
  parseJSON = Prelude.parseJSONText "CRType"
