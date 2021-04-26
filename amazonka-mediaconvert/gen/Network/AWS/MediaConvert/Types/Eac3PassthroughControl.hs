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
-- Module      : Network.AWS.MediaConvert.Types.Eac3PassthroughControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3PassthroughControl
  ( Eac3PassthroughControl
      ( ..,
        Eac3PassthroughControlNOPASSTHROUGH,
        Eac3PassthroughControlWHENPOSSIBLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it
-- is present on the input. this detection is dynamic over the life of the
-- transcode. Inputs that alternate between DD+ and non-DD+ content will
-- have a consistent DD+ output as the system alternates between
-- passthrough and encoding.
newtype Eac3PassthroughControl = Eac3PassthroughControl'
  { fromEac3PassthroughControl ::
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

pattern Eac3PassthroughControlNOPASSTHROUGH :: Eac3PassthroughControl
pattern Eac3PassthroughControlNOPASSTHROUGH = Eac3PassthroughControl' "NO_PASSTHROUGH"

pattern Eac3PassthroughControlWHENPOSSIBLE :: Eac3PassthroughControl
pattern Eac3PassthroughControlWHENPOSSIBLE = Eac3PassthroughControl' "WHEN_POSSIBLE"

{-# COMPLETE
  Eac3PassthroughControlNOPASSTHROUGH,
  Eac3PassthroughControlWHENPOSSIBLE,
  Eac3PassthroughControl'
  #-}

instance Prelude.FromText Eac3PassthroughControl where
  parser = Eac3PassthroughControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3PassthroughControl where
  toText (Eac3PassthroughControl' x) = x

instance Prelude.Hashable Eac3PassthroughControl

instance Prelude.NFData Eac3PassthroughControl

instance Prelude.ToByteString Eac3PassthroughControl

instance Prelude.ToQuery Eac3PassthroughControl

instance Prelude.ToHeader Eac3PassthroughControl

instance Prelude.ToJSON Eac3PassthroughControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3PassthroughControl where
  parseJSON = Prelude.parseJSONText "Eac3PassthroughControl"
