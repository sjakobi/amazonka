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
-- Module      : Network.AWS.ELBv2.Types.TargetTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetTypeEnum
  ( TargetTypeEnum
      ( ..,
        TargetTypeEnumIP,
        TargetTypeEnumInstance,
        TargetTypeEnumLambda
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetTypeEnum = TargetTypeEnum'
  { fromTargetTypeEnum ::
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

pattern TargetTypeEnumIP :: TargetTypeEnum
pattern TargetTypeEnumIP = TargetTypeEnum' "ip"

pattern TargetTypeEnumInstance :: TargetTypeEnum
pattern TargetTypeEnumInstance = TargetTypeEnum' "instance"

pattern TargetTypeEnumLambda :: TargetTypeEnum
pattern TargetTypeEnumLambda = TargetTypeEnum' "lambda"

{-# COMPLETE
  TargetTypeEnumIP,
  TargetTypeEnumInstance,
  TargetTypeEnumLambda,
  TargetTypeEnum'
  #-}

instance Prelude.FromText TargetTypeEnum where
  parser = TargetTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetTypeEnum where
  toText (TargetTypeEnum' x) = x

instance Prelude.Hashable TargetTypeEnum

instance Prelude.NFData TargetTypeEnum

instance Prelude.ToByteString TargetTypeEnum

instance Prelude.ToQuery TargetTypeEnum

instance Prelude.ToHeader TargetTypeEnum

instance Prelude.FromXML TargetTypeEnum where
  parseXML = Prelude.parseXMLText "TargetTypeEnum"
