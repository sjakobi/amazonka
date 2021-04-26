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
-- Module      : Network.AWS.Rekognition.Types.FaceSearchSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.FaceSearchSortBy
  ( FaceSearchSortBy
      ( ..,
        FaceSearchSortByINDEX,
        FaceSearchSortByTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FaceSearchSortBy = FaceSearchSortBy'
  { fromFaceSearchSortBy ::
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

pattern FaceSearchSortByINDEX :: FaceSearchSortBy
pattern FaceSearchSortByINDEX = FaceSearchSortBy' "INDEX"

pattern FaceSearchSortByTIMESTAMP :: FaceSearchSortBy
pattern FaceSearchSortByTIMESTAMP = FaceSearchSortBy' "TIMESTAMP"

{-# COMPLETE
  FaceSearchSortByINDEX,
  FaceSearchSortByTIMESTAMP,
  FaceSearchSortBy'
  #-}

instance Prelude.FromText FaceSearchSortBy where
  parser = FaceSearchSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText FaceSearchSortBy where
  toText (FaceSearchSortBy' x) = x

instance Prelude.Hashable FaceSearchSortBy

instance Prelude.NFData FaceSearchSortBy

instance Prelude.ToByteString FaceSearchSortBy

instance Prelude.ToQuery FaceSearchSortBy

instance Prelude.ToHeader FaceSearchSortBy

instance Prelude.ToJSON FaceSearchSortBy where
  toJSON = Prelude.toJSONText
