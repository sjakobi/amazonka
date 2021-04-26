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
-- Module      : Network.AWS.MediaConvert.Types.InputFilterEnable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputFilterEnable
  ( InputFilterEnable
      ( ..,
        InputFilterEnableAUTO,
        InputFilterEnableDISABLE,
        InputFilterEnableFORCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify how the transcoding service applies the denoise and deblock
-- filters. You must also enable the filters separately, with Denoise
-- (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The
-- transcoding service determines whether to apply filtering, depending on
-- input type and quality. * Disable - The input is not filtered. This is
-- true even if you use the API to enable them in (InputDeblockFilter) and
-- (InputDeblockFilter). * Force - The input is filtered regardless of
-- input type.
newtype InputFilterEnable = InputFilterEnable'
  { fromInputFilterEnable ::
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

pattern InputFilterEnableAUTO :: InputFilterEnable
pattern InputFilterEnableAUTO = InputFilterEnable' "AUTO"

pattern InputFilterEnableDISABLE :: InputFilterEnable
pattern InputFilterEnableDISABLE = InputFilterEnable' "DISABLE"

pattern InputFilterEnableFORCE :: InputFilterEnable
pattern InputFilterEnableFORCE = InputFilterEnable' "FORCE"

{-# COMPLETE
  InputFilterEnableAUTO,
  InputFilterEnableDISABLE,
  InputFilterEnableFORCE,
  InputFilterEnable'
  #-}

instance Prelude.FromText InputFilterEnable where
  parser = InputFilterEnable' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputFilterEnable where
  toText (InputFilterEnable' x) = x

instance Prelude.Hashable InputFilterEnable

instance Prelude.NFData InputFilterEnable

instance Prelude.ToByteString InputFilterEnable

instance Prelude.ToQuery InputFilterEnable

instance Prelude.ToHeader InputFilterEnable

instance Prelude.ToJSON InputFilterEnable where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputFilterEnable where
  parseJSON = Prelude.parseJSONText "InputFilterEnable"
