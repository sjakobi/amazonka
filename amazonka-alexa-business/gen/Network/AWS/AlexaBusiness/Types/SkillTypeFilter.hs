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
-- Module      : Network.AWS.AlexaBusiness.Types.SkillTypeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SkillTypeFilter
  ( SkillTypeFilter
      ( ..,
        SkillTypeFilterALL,
        SkillTypeFilterPRIVATE,
        SkillTypeFilterPUBLIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SkillTypeFilter = SkillTypeFilter'
  { fromSkillTypeFilter ::
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

pattern SkillTypeFilterALL :: SkillTypeFilter
pattern SkillTypeFilterALL = SkillTypeFilter' "ALL"

pattern SkillTypeFilterPRIVATE :: SkillTypeFilter
pattern SkillTypeFilterPRIVATE = SkillTypeFilter' "PRIVATE"

pattern SkillTypeFilterPUBLIC :: SkillTypeFilter
pattern SkillTypeFilterPUBLIC = SkillTypeFilter' "PUBLIC"

{-# COMPLETE
  SkillTypeFilterALL,
  SkillTypeFilterPRIVATE,
  SkillTypeFilterPUBLIC,
  SkillTypeFilter'
  #-}

instance Prelude.FromText SkillTypeFilter where
  parser = SkillTypeFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText SkillTypeFilter where
  toText (SkillTypeFilter' x) = x

instance Prelude.Hashable SkillTypeFilter

instance Prelude.NFData SkillTypeFilter

instance Prelude.ToByteString SkillTypeFilter

instance Prelude.ToQuery SkillTypeFilter

instance Prelude.ToHeader SkillTypeFilter

instance Prelude.ToJSON SkillTypeFilter where
  toJSON = Prelude.toJSONText
