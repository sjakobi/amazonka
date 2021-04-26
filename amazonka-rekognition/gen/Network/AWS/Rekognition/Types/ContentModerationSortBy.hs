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
-- Module      : Network.AWS.Rekognition.Types.ContentModerationSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ContentModerationSortBy
  ( ContentModerationSortBy
      ( ..,
        ContentModerationSortByNAME,
        ContentModerationSortByTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContentModerationSortBy = ContentModerationSortBy'
  { fromContentModerationSortBy ::
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

pattern ContentModerationSortByNAME :: ContentModerationSortBy
pattern ContentModerationSortByNAME = ContentModerationSortBy' "NAME"

pattern ContentModerationSortByTIMESTAMP :: ContentModerationSortBy
pattern ContentModerationSortByTIMESTAMP = ContentModerationSortBy' "TIMESTAMP"

{-# COMPLETE
  ContentModerationSortByNAME,
  ContentModerationSortByTIMESTAMP,
  ContentModerationSortBy'
  #-}

instance Prelude.FromText ContentModerationSortBy where
  parser = ContentModerationSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContentModerationSortBy where
  toText (ContentModerationSortBy' x) = x

instance Prelude.Hashable ContentModerationSortBy

instance Prelude.NFData ContentModerationSortBy

instance Prelude.ToByteString ContentModerationSortBy

instance Prelude.ToQuery ContentModerationSortBy

instance Prelude.ToHeader ContentModerationSortBy

instance Prelude.ToJSON ContentModerationSortBy where
  toJSON = Prelude.toJSONText
