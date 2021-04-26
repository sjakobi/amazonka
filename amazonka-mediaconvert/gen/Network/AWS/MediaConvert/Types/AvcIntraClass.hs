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
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraClass
  ( AvcIntraClass
      ( ..,
        AvcIntraClassCLASS100,
        AvcIntraClassCLASS200,
        AvcIntraClassCLASS4K2K,
        AvcIntraClassCLASS50
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the AVC-Intra class of your output. The AVC-Intra class
-- selection determines the output video bit rate depending on the frame
-- rate of the output. Outputs with higher class values have higher
-- bitrates and improved image quality. Note that for Class 4K\/2K,
-- MediaConvert supports only 4:2:2 chroma subsampling.
newtype AvcIntraClass = AvcIntraClass'
  { fromAvcIntraClass ::
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

pattern AvcIntraClassCLASS100 :: AvcIntraClass
pattern AvcIntraClassCLASS100 = AvcIntraClass' "CLASS_100"

pattern AvcIntraClassCLASS200 :: AvcIntraClass
pattern AvcIntraClassCLASS200 = AvcIntraClass' "CLASS_200"

pattern AvcIntraClassCLASS4K2K :: AvcIntraClass
pattern AvcIntraClassCLASS4K2K = AvcIntraClass' "CLASS_4K_2K"

pattern AvcIntraClassCLASS50 :: AvcIntraClass
pattern AvcIntraClassCLASS50 = AvcIntraClass' "CLASS_50"

{-# COMPLETE
  AvcIntraClassCLASS100,
  AvcIntraClassCLASS200,
  AvcIntraClassCLASS4K2K,
  AvcIntraClassCLASS50,
  AvcIntraClass'
  #-}

instance Prelude.FromText AvcIntraClass where
  parser = AvcIntraClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText AvcIntraClass where
  toText (AvcIntraClass' x) = x

instance Prelude.Hashable AvcIntraClass

instance Prelude.NFData AvcIntraClass

instance Prelude.ToByteString AvcIntraClass

instance Prelude.ToQuery AvcIntraClass

instance Prelude.ToHeader AvcIntraClass

instance Prelude.ToJSON AvcIntraClass where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AvcIntraClass where
  parseJSON = Prelude.parseJSONText "AvcIntraClass"
