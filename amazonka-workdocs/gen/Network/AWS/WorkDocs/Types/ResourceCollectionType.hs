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
-- Module      : Network.AWS.WorkDocs.Types.ResourceCollectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourceCollectionType
  ( ResourceCollectionType
      ( ..,
        ResourceCollectionTypeSHAREDWITHME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceCollectionType = ResourceCollectionType'
  { fromResourceCollectionType ::
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

pattern ResourceCollectionTypeSHAREDWITHME :: ResourceCollectionType
pattern ResourceCollectionTypeSHAREDWITHME = ResourceCollectionType' "SHARED_WITH_ME"

{-# COMPLETE
  ResourceCollectionTypeSHAREDWITHME,
  ResourceCollectionType'
  #-}

instance Prelude.FromText ResourceCollectionType where
  parser = ResourceCollectionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceCollectionType where
  toText (ResourceCollectionType' x) = x

instance Prelude.Hashable ResourceCollectionType

instance Prelude.NFData ResourceCollectionType

instance Prelude.ToByteString ResourceCollectionType

instance Prelude.ToQuery ResourceCollectionType

instance Prelude.ToHeader ResourceCollectionType

instance Prelude.ToJSON ResourceCollectionType where
  toJSON = Prelude.toJSONText
