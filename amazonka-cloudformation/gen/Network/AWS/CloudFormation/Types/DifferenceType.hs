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
-- Module      : Network.AWS.CloudFormation.Types.DifferenceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.DifferenceType
  ( DifferenceType
      ( ..,
        DifferenceTypeADD,
        DifferenceTypeNOTEQUAL,
        DifferenceTypeREMOVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DifferenceType = DifferenceType'
  { fromDifferenceType ::
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

pattern DifferenceTypeADD :: DifferenceType
pattern DifferenceTypeADD = DifferenceType' "ADD"

pattern DifferenceTypeNOTEQUAL :: DifferenceType
pattern DifferenceTypeNOTEQUAL = DifferenceType' "NOT_EQUAL"

pattern DifferenceTypeREMOVE :: DifferenceType
pattern DifferenceTypeREMOVE = DifferenceType' "REMOVE"

{-# COMPLETE
  DifferenceTypeADD,
  DifferenceTypeNOTEQUAL,
  DifferenceTypeREMOVE,
  DifferenceType'
  #-}

instance Prelude.FromText DifferenceType where
  parser = DifferenceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DifferenceType where
  toText (DifferenceType' x) = x

instance Prelude.Hashable DifferenceType

instance Prelude.NFData DifferenceType

instance Prelude.ToByteString DifferenceType

instance Prelude.ToQuery DifferenceType

instance Prelude.ToHeader DifferenceType

instance Prelude.FromXML DifferenceType where
  parseXML = Prelude.parseXMLText "DifferenceType"
