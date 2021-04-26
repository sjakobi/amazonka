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
-- Module      : Network.AWS.MediaConvert.Types.CmafSegmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafSegmentControl
  ( CmafSegmentControl
      ( ..,
        CmafSegmentControlSEGMENTEDFILES,
        CmafSegmentControlSINGLEFILE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to SINGLE_FILE, a single output file is generated, which is
-- internally segmented using the Fragment Length and Segment Length. When
-- set to SEGMENTED_FILES, separate segment files will be created.
newtype CmafSegmentControl = CmafSegmentControl'
  { fromCmafSegmentControl ::
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

pattern CmafSegmentControlSEGMENTEDFILES :: CmafSegmentControl
pattern CmafSegmentControlSEGMENTEDFILES = CmafSegmentControl' "SEGMENTED_FILES"

pattern CmafSegmentControlSINGLEFILE :: CmafSegmentControl
pattern CmafSegmentControlSINGLEFILE = CmafSegmentControl' "SINGLE_FILE"

{-# COMPLETE
  CmafSegmentControlSEGMENTEDFILES,
  CmafSegmentControlSINGLEFILE,
  CmafSegmentControl'
  #-}

instance Prelude.FromText CmafSegmentControl where
  parser = CmafSegmentControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafSegmentControl where
  toText (CmafSegmentControl' x) = x

instance Prelude.Hashable CmafSegmentControl

instance Prelude.NFData CmafSegmentControl

instance Prelude.ToByteString CmafSegmentControl

instance Prelude.ToQuery CmafSegmentControl

instance Prelude.ToHeader CmafSegmentControl

instance Prelude.ToJSON CmafSegmentControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafSegmentControl where
  parseJSON = Prelude.parseJSONText "CmafSegmentControl"
