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
-- Module      : Network.AWS.CodeBuild.Types.SharedResourceSortByType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.SharedResourceSortByType
  ( SharedResourceSortByType
      ( ..,
        SharedResourceSortByTypeARN,
        SharedResourceSortByTypeMODIFIEDTIME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SharedResourceSortByType = SharedResourceSortByType'
  { fromSharedResourceSortByType ::
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

pattern SharedResourceSortByTypeARN :: SharedResourceSortByType
pattern SharedResourceSortByTypeARN = SharedResourceSortByType' "ARN"

pattern SharedResourceSortByTypeMODIFIEDTIME :: SharedResourceSortByType
pattern SharedResourceSortByTypeMODIFIEDTIME = SharedResourceSortByType' "MODIFIED_TIME"

{-# COMPLETE
  SharedResourceSortByTypeARN,
  SharedResourceSortByTypeMODIFIEDTIME,
  SharedResourceSortByType'
  #-}

instance Prelude.FromText SharedResourceSortByType where
  parser = SharedResourceSortByType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SharedResourceSortByType where
  toText (SharedResourceSortByType' x) = x

instance Prelude.Hashable SharedResourceSortByType

instance Prelude.NFData SharedResourceSortByType

instance Prelude.ToByteString SharedResourceSortByType

instance Prelude.ToQuery SharedResourceSortByType

instance Prelude.ToHeader SharedResourceSortByType

instance Prelude.ToJSON SharedResourceSortByType where
  toJSON = Prelude.toJSONText
