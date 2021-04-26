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
-- Module      : Network.AWS.SageMaker.Types.SortAssociationsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortAssociationsBy
  ( SortAssociationsBy
      ( ..,
        SortAssociationsByCreationTime,
        SortAssociationsByDestinationArn,
        SortAssociationsByDestinationType,
        SortAssociationsBySourceArn,
        SortAssociationsBySourceType
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortAssociationsBy = SortAssociationsBy'
  { fromSortAssociationsBy ::
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

pattern SortAssociationsByCreationTime :: SortAssociationsBy
pattern SortAssociationsByCreationTime = SortAssociationsBy' "CreationTime"

pattern SortAssociationsByDestinationArn :: SortAssociationsBy
pattern SortAssociationsByDestinationArn = SortAssociationsBy' "DestinationArn"

pattern SortAssociationsByDestinationType :: SortAssociationsBy
pattern SortAssociationsByDestinationType = SortAssociationsBy' "DestinationType"

pattern SortAssociationsBySourceArn :: SortAssociationsBy
pattern SortAssociationsBySourceArn = SortAssociationsBy' "SourceArn"

pattern SortAssociationsBySourceType :: SortAssociationsBy
pattern SortAssociationsBySourceType = SortAssociationsBy' "SourceType"

{-# COMPLETE
  SortAssociationsByCreationTime,
  SortAssociationsByDestinationArn,
  SortAssociationsByDestinationType,
  SortAssociationsBySourceArn,
  SortAssociationsBySourceType,
  SortAssociationsBy'
  #-}

instance Prelude.FromText SortAssociationsBy where
  parser = SortAssociationsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortAssociationsBy where
  toText (SortAssociationsBy' x) = x

instance Prelude.Hashable SortAssociationsBy

instance Prelude.NFData SortAssociationsBy

instance Prelude.ToByteString SortAssociationsBy

instance Prelude.ToQuery SortAssociationsBy

instance Prelude.ToHeader SortAssociationsBy

instance Prelude.ToJSON SortAssociationsBy where
  toJSON = Prelude.toJSONText
