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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupStreamManifestBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupStreamManifestBehavior
  ( SmoothGroupStreamManifestBehavior
      ( ..,
        SmoothGroupStreamManifestBehaviorDONOTSEND,
        SmoothGroupStreamManifestBehaviorSEND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Stream Manifest Behavior
newtype SmoothGroupStreamManifestBehavior = SmoothGroupStreamManifestBehavior'
  { fromSmoothGroupStreamManifestBehavior ::
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

pattern SmoothGroupStreamManifestBehaviorDONOTSEND :: SmoothGroupStreamManifestBehavior
pattern SmoothGroupStreamManifestBehaviorDONOTSEND = SmoothGroupStreamManifestBehavior' "DO_NOT_SEND"

pattern SmoothGroupStreamManifestBehaviorSEND :: SmoothGroupStreamManifestBehavior
pattern SmoothGroupStreamManifestBehaviorSEND = SmoothGroupStreamManifestBehavior' "SEND"

{-# COMPLETE
  SmoothGroupStreamManifestBehaviorDONOTSEND,
  SmoothGroupStreamManifestBehaviorSEND,
  SmoothGroupStreamManifestBehavior'
  #-}

instance Prelude.FromText SmoothGroupStreamManifestBehavior where
  parser = SmoothGroupStreamManifestBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupStreamManifestBehavior where
  toText (SmoothGroupStreamManifestBehavior' x) = x

instance Prelude.Hashable SmoothGroupStreamManifestBehavior

instance Prelude.NFData SmoothGroupStreamManifestBehavior

instance Prelude.ToByteString SmoothGroupStreamManifestBehavior

instance Prelude.ToQuery SmoothGroupStreamManifestBehavior

instance Prelude.ToHeader SmoothGroupStreamManifestBehavior

instance Prelude.ToJSON SmoothGroupStreamManifestBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupStreamManifestBehavior where
  parseJSON = Prelude.parseJSONText "SmoothGroupStreamManifestBehavior"
