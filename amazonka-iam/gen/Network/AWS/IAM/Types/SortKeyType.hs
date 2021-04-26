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
-- Module      : Network.AWS.IAM.Types.SortKeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.SortKeyType
  ( SortKeyType
      ( ..,
        SortKeyTypeLASTAUTHENTICATEDTIMEASCENDING,
        SortKeyTypeLASTAUTHENTICATEDTIMEDESCENDING,
        SortKeyTypeSERVICENAMESPACEASCENDING,
        SortKeyTypeSERVICENAMESPACEDESCENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortKeyType = SortKeyType'
  { fromSortKeyType ::
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

pattern SortKeyTypeLASTAUTHENTICATEDTIMEASCENDING :: SortKeyType
pattern SortKeyTypeLASTAUTHENTICATEDTIMEASCENDING = SortKeyType' "LAST_AUTHENTICATED_TIME_ASCENDING"

pattern SortKeyTypeLASTAUTHENTICATEDTIMEDESCENDING :: SortKeyType
pattern SortKeyTypeLASTAUTHENTICATEDTIMEDESCENDING = SortKeyType' "LAST_AUTHENTICATED_TIME_DESCENDING"

pattern SortKeyTypeSERVICENAMESPACEASCENDING :: SortKeyType
pattern SortKeyTypeSERVICENAMESPACEASCENDING = SortKeyType' "SERVICE_NAMESPACE_ASCENDING"

pattern SortKeyTypeSERVICENAMESPACEDESCENDING :: SortKeyType
pattern SortKeyTypeSERVICENAMESPACEDESCENDING = SortKeyType' "SERVICE_NAMESPACE_DESCENDING"

{-# COMPLETE
  SortKeyTypeLASTAUTHENTICATEDTIMEASCENDING,
  SortKeyTypeLASTAUTHENTICATEDTIMEDESCENDING,
  SortKeyTypeSERVICENAMESPACEASCENDING,
  SortKeyTypeSERVICENAMESPACEDESCENDING,
  SortKeyType'
  #-}

instance Prelude.FromText SortKeyType where
  parser = SortKeyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortKeyType where
  toText (SortKeyType' x) = x

instance Prelude.Hashable SortKeyType

instance Prelude.NFData SortKeyType

instance Prelude.ToByteString SortKeyType

instance Prelude.ToQuery SortKeyType

instance Prelude.ToHeader SortKeyType
