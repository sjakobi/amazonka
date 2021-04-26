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
-- Module      : Network.AWS.SageMaker.Types.ImageSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ImageSortBy
  ( ImageSortBy
      ( ..,
        ImageSortByCREATIONTIME,
        ImageSortByIMAGENAME,
        ImageSortByLASTMODIFIEDTIME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageSortBy = ImageSortBy'
  { fromImageSortBy ::
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

pattern ImageSortByCREATIONTIME :: ImageSortBy
pattern ImageSortByCREATIONTIME = ImageSortBy' "CREATION_TIME"

pattern ImageSortByIMAGENAME :: ImageSortBy
pattern ImageSortByIMAGENAME = ImageSortBy' "IMAGE_NAME"

pattern ImageSortByLASTMODIFIEDTIME :: ImageSortBy
pattern ImageSortByLASTMODIFIEDTIME = ImageSortBy' "LAST_MODIFIED_TIME"

{-# COMPLETE
  ImageSortByCREATIONTIME,
  ImageSortByIMAGENAME,
  ImageSortByLASTMODIFIEDTIME,
  ImageSortBy'
  #-}

instance Prelude.FromText ImageSortBy where
  parser = ImageSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageSortBy where
  toText (ImageSortBy' x) = x

instance Prelude.Hashable ImageSortBy

instance Prelude.NFData ImageSortBy

instance Prelude.ToByteString ImageSortBy

instance Prelude.ToQuery ImageSortBy

instance Prelude.ToHeader ImageSortBy

instance Prelude.ToJSON ImageSortBy where
  toJSON = Prelude.toJSONText
