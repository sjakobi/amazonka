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
-- Module      : Network.AWS.ImportExport.Types.JobType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ImportExport.Types.JobType
  ( JobType
      ( ..,
        JobTypeExport,
        JobTypeImport
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies whether the job to initiate is an import or export job.
newtype JobType = JobType'
  { fromJobType ::
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

pattern JobTypeExport :: JobType
pattern JobTypeExport = JobType' "Export"

pattern JobTypeImport :: JobType
pattern JobTypeImport = JobType' "Import"

{-# COMPLETE
  JobTypeExport,
  JobTypeImport,
  JobType'
  #-}

instance Prelude.FromText JobType where
  parser = JobType' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobType where
  toText (JobType' x) = x

instance Prelude.Hashable JobType

instance Prelude.NFData JobType

instance Prelude.ToByteString JobType

instance Prelude.ToQuery JobType

instance Prelude.ToHeader JobType

instance Prelude.FromXML JobType where
  parseXML = Prelude.parseXMLText "JobType"
