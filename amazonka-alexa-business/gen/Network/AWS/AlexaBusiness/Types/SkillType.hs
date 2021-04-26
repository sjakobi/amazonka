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
-- Module      : Network.AWS.AlexaBusiness.Types.SkillType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SkillType
  ( SkillType
      ( ..,
        SkillTypePRIVATE,
        SkillTypePUBLIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SkillType = SkillType'
  { fromSkillType ::
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

pattern SkillTypePRIVATE :: SkillType
pattern SkillTypePRIVATE = SkillType' "PRIVATE"

pattern SkillTypePUBLIC :: SkillType
pattern SkillTypePUBLIC = SkillType' "PUBLIC"

{-# COMPLETE
  SkillTypePRIVATE,
  SkillTypePUBLIC,
  SkillType'
  #-}

instance Prelude.FromText SkillType where
  parser = SkillType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SkillType where
  toText (SkillType' x) = x

instance Prelude.Hashable SkillType

instance Prelude.NFData SkillType

instance Prelude.ToByteString SkillType

instance Prelude.ToQuery SkillType

instance Prelude.ToHeader SkillType

instance Prelude.FromJSON SkillType where
  parseJSON = Prelude.parseJSONText "SkillType"
