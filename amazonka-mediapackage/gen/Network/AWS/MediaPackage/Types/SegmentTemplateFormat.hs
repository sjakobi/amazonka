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
-- Module      : Network.AWS.MediaPackage.Types.SegmentTemplateFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.SegmentTemplateFormat
  ( SegmentTemplateFormat
      ( ..,
        SegmentTemplateFormatNUMBERWITHDURATION,
        SegmentTemplateFormatNUMBERWITHTIMELINE,
        SegmentTemplateFormatTIMEWITHTIMELINE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SegmentTemplateFormat = SegmentTemplateFormat'
  { fromSegmentTemplateFormat ::
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

pattern SegmentTemplateFormatNUMBERWITHDURATION :: SegmentTemplateFormat
pattern SegmentTemplateFormatNUMBERWITHDURATION = SegmentTemplateFormat' "NUMBER_WITH_DURATION"

pattern SegmentTemplateFormatNUMBERWITHTIMELINE :: SegmentTemplateFormat
pattern SegmentTemplateFormatNUMBERWITHTIMELINE = SegmentTemplateFormat' "NUMBER_WITH_TIMELINE"

pattern SegmentTemplateFormatTIMEWITHTIMELINE :: SegmentTemplateFormat
pattern SegmentTemplateFormatTIMEWITHTIMELINE = SegmentTemplateFormat' "TIME_WITH_TIMELINE"

{-# COMPLETE
  SegmentTemplateFormatNUMBERWITHDURATION,
  SegmentTemplateFormatNUMBERWITHTIMELINE,
  SegmentTemplateFormatTIMEWITHTIMELINE,
  SegmentTemplateFormat'
  #-}

instance Prelude.FromText SegmentTemplateFormat where
  parser = SegmentTemplateFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText SegmentTemplateFormat where
  toText (SegmentTemplateFormat' x) = x

instance Prelude.Hashable SegmentTemplateFormat

instance Prelude.NFData SegmentTemplateFormat

instance Prelude.ToByteString SegmentTemplateFormat

instance Prelude.ToQuery SegmentTemplateFormat

instance Prelude.ToHeader SegmentTemplateFormat

instance Prelude.ToJSON SegmentTemplateFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SegmentTemplateFormat where
  parseJSON = Prelude.parseJSONText "SegmentTemplateFormat"
