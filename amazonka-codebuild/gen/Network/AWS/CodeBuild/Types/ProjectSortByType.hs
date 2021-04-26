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
-- Module      : Network.AWS.CodeBuild.Types.ProjectSortByType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ProjectSortByType
  ( ProjectSortByType
      ( ..,
        ProjectSortByTypeCREATEDTIME,
        ProjectSortByTypeLASTMODIFIEDTIME,
        ProjectSortByTypeNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProjectSortByType = ProjectSortByType'
  { fromProjectSortByType ::
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

pattern ProjectSortByTypeCREATEDTIME :: ProjectSortByType
pattern ProjectSortByTypeCREATEDTIME = ProjectSortByType' "CREATED_TIME"

pattern ProjectSortByTypeLASTMODIFIEDTIME :: ProjectSortByType
pattern ProjectSortByTypeLASTMODIFIEDTIME = ProjectSortByType' "LAST_MODIFIED_TIME"

pattern ProjectSortByTypeNAME :: ProjectSortByType
pattern ProjectSortByTypeNAME = ProjectSortByType' "NAME"

{-# COMPLETE
  ProjectSortByTypeCREATEDTIME,
  ProjectSortByTypeLASTMODIFIEDTIME,
  ProjectSortByTypeNAME,
  ProjectSortByType'
  #-}

instance Prelude.FromText ProjectSortByType where
  parser = ProjectSortByType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProjectSortByType where
  toText (ProjectSortByType' x) = x

instance Prelude.Hashable ProjectSortByType

instance Prelude.NFData ProjectSortByType

instance Prelude.ToByteString ProjectSortByType

instance Prelude.ToQuery ProjectSortByType

instance Prelude.ToHeader ProjectSortByType

instance Prelude.ToJSON ProjectSortByType where
  toJSON = Prelude.toJSONText
