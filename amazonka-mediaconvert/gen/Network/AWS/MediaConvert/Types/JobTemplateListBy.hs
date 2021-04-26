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
-- Module      : Network.AWS.MediaConvert.Types.JobTemplateListBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.JobTemplateListBy
  ( JobTemplateListBy
      ( ..,
        JobTemplateListByCREATIONDATE,
        JobTemplateListByNAME,
        JobTemplateListBySYSTEM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. When you request a list of job templates, you can choose to
-- list them alphabetically by NAME or chronologically by CREATION_DATE. If
-- you don\'t specify, the service will list them by name.
newtype JobTemplateListBy = JobTemplateListBy'
  { fromJobTemplateListBy ::
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

pattern JobTemplateListByCREATIONDATE :: JobTemplateListBy
pattern JobTemplateListByCREATIONDATE = JobTemplateListBy' "CREATION_DATE"

pattern JobTemplateListByNAME :: JobTemplateListBy
pattern JobTemplateListByNAME = JobTemplateListBy' "NAME"

pattern JobTemplateListBySYSTEM :: JobTemplateListBy
pattern JobTemplateListBySYSTEM = JobTemplateListBy' "SYSTEM"

{-# COMPLETE
  JobTemplateListByCREATIONDATE,
  JobTemplateListByNAME,
  JobTemplateListBySYSTEM,
  JobTemplateListBy'
  #-}

instance Prelude.FromText JobTemplateListBy where
  parser = JobTemplateListBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobTemplateListBy where
  toText (JobTemplateListBy' x) = x

instance Prelude.Hashable JobTemplateListBy

instance Prelude.NFData JobTemplateListBy

instance Prelude.ToByteString JobTemplateListBy

instance Prelude.ToQuery JobTemplateListBy

instance Prelude.ToHeader JobTemplateListBy

instance Prelude.ToJSON JobTemplateListBy where
  toJSON = Prelude.toJSONText
