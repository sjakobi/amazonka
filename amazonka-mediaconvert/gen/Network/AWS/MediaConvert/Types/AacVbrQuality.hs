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
-- Module      : Network.AWS.MediaConvert.Types.AacVbrQuality
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacVbrQuality
  ( AacVbrQuality
      ( ..,
        AacVbrQualityHIGH,
        AacVbrQualityLOW,
        AacVbrQualityMEDIUMHIGH,
        AacVbrQualityMEDIUMLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | VBR Quality Level - Only used if rate_control_mode is VBR.
newtype AacVbrQuality = AacVbrQuality'
  { fromAacVbrQuality ::
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

pattern AacVbrQualityHIGH :: AacVbrQuality
pattern AacVbrQualityHIGH = AacVbrQuality' "HIGH"

pattern AacVbrQualityLOW :: AacVbrQuality
pattern AacVbrQualityLOW = AacVbrQuality' "LOW"

pattern AacVbrQualityMEDIUMHIGH :: AacVbrQuality
pattern AacVbrQualityMEDIUMHIGH = AacVbrQuality' "MEDIUM_HIGH"

pattern AacVbrQualityMEDIUMLOW :: AacVbrQuality
pattern AacVbrQualityMEDIUMLOW = AacVbrQuality' "MEDIUM_LOW"

{-# COMPLETE
  AacVbrQualityHIGH,
  AacVbrQualityLOW,
  AacVbrQualityMEDIUMHIGH,
  AacVbrQualityMEDIUMLOW,
  AacVbrQuality'
  #-}

instance Prelude.FromText AacVbrQuality where
  parser = AacVbrQuality' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacVbrQuality where
  toText (AacVbrQuality' x) = x

instance Prelude.Hashable AacVbrQuality

instance Prelude.NFData AacVbrQuality

instance Prelude.ToByteString AacVbrQuality

instance Prelude.ToQuery AacVbrQuality

instance Prelude.ToHeader AacVbrQuality

instance Prelude.ToJSON AacVbrQuality where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacVbrQuality where
  parseJSON = Prelude.parseJSONText "AacVbrQuality"
