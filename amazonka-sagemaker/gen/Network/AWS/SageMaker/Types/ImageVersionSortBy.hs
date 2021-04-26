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
-- Module      : Network.AWS.SageMaker.Types.ImageVersionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageVersionSortBy
  ( ImageVersionSortBy
      ( ..,
        ImageVersionSortByCREATIONTIME,
        ImageVersionSortByLASTMODIFIEDTIME,
        ImageVersionSortByVERSION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageVersionSortBy = ImageVersionSortBy'
  { fromImageVersionSortBy ::
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

pattern ImageVersionSortByCREATIONTIME :: ImageVersionSortBy
pattern ImageVersionSortByCREATIONTIME = ImageVersionSortBy' "CREATION_TIME"

pattern ImageVersionSortByLASTMODIFIEDTIME :: ImageVersionSortBy
pattern ImageVersionSortByLASTMODIFIEDTIME = ImageVersionSortBy' "LAST_MODIFIED_TIME"

pattern ImageVersionSortByVERSION :: ImageVersionSortBy
pattern ImageVersionSortByVERSION = ImageVersionSortBy' "VERSION"

{-# COMPLETE
  ImageVersionSortByCREATIONTIME,
  ImageVersionSortByLASTMODIFIEDTIME,
  ImageVersionSortByVERSION,
  ImageVersionSortBy'
  #-}

instance Prelude.FromText ImageVersionSortBy where
  parser = ImageVersionSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageVersionSortBy where
  toText (ImageVersionSortBy' x) = x

instance Prelude.Hashable ImageVersionSortBy

instance Prelude.NFData ImageVersionSortBy

instance Prelude.ToByteString ImageVersionSortBy

instance Prelude.ToQuery ImageVersionSortBy

instance Prelude.ToHeader ImageVersionSortBy

instance Prelude.ToJSON ImageVersionSortBy where
  toJSON = Prelude.toJSONText
