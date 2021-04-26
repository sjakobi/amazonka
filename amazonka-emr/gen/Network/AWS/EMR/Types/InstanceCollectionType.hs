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
-- Module      : Network.AWS.EMR.Types.InstanceCollectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceCollectionType
  ( InstanceCollectionType
      ( ..,
        InstanceCollectionTypeINSTANCEFLEET,
        InstanceCollectionTypeINSTANCEGROUP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceCollectionType = InstanceCollectionType'
  { fromInstanceCollectionType ::
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

pattern InstanceCollectionTypeINSTANCEFLEET :: InstanceCollectionType
pattern InstanceCollectionTypeINSTANCEFLEET = InstanceCollectionType' "INSTANCE_FLEET"

pattern InstanceCollectionTypeINSTANCEGROUP :: InstanceCollectionType
pattern InstanceCollectionTypeINSTANCEGROUP = InstanceCollectionType' "INSTANCE_GROUP"

{-# COMPLETE
  InstanceCollectionTypeINSTANCEFLEET,
  InstanceCollectionTypeINSTANCEGROUP,
  InstanceCollectionType'
  #-}

instance Prelude.FromText InstanceCollectionType where
  parser = InstanceCollectionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceCollectionType where
  toText (InstanceCollectionType' x) = x

instance Prelude.Hashable InstanceCollectionType

instance Prelude.NFData InstanceCollectionType

instance Prelude.ToByteString InstanceCollectionType

instance Prelude.ToQuery InstanceCollectionType

instance Prelude.ToHeader InstanceCollectionType

instance Prelude.FromJSON InstanceCollectionType where
  parseJSON = Prelude.parseJSONText "InstanceCollectionType"
