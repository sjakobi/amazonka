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
-- Module      : Network.AWS.LexModels.Types.ObfuscationSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ObfuscationSetting
  ( ObfuscationSetting
      ( ..,
        ObfuscationSettingDEFAULTOBFUSCATION,
        ObfuscationSettingNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ObfuscationSetting = ObfuscationSetting'
  { fromObfuscationSetting ::
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

pattern ObfuscationSettingDEFAULTOBFUSCATION :: ObfuscationSetting
pattern ObfuscationSettingDEFAULTOBFUSCATION = ObfuscationSetting' "DEFAULT_OBFUSCATION"

pattern ObfuscationSettingNONE :: ObfuscationSetting
pattern ObfuscationSettingNONE = ObfuscationSetting' "NONE"

{-# COMPLETE
  ObfuscationSettingDEFAULTOBFUSCATION,
  ObfuscationSettingNONE,
  ObfuscationSetting'
  #-}

instance Prelude.FromText ObfuscationSetting where
  parser = ObfuscationSetting' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObfuscationSetting where
  toText (ObfuscationSetting' x) = x

instance Prelude.Hashable ObfuscationSetting

instance Prelude.NFData ObfuscationSetting

instance Prelude.ToByteString ObfuscationSetting

instance Prelude.ToQuery ObfuscationSetting

instance Prelude.ToHeader ObfuscationSetting

instance Prelude.ToJSON ObfuscationSetting where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ObfuscationSetting where
  parseJSON = Prelude.parseJSONText "ObfuscationSetting"
