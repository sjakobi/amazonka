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
-- Module      : Network.AWS.ResourceGroups.Types.QueryErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.QueryErrorCode
  ( QueryErrorCode
      ( ..,
        QueryErrorCodeCLOUDFORMATIONSTACKINACTIVE,
        QueryErrorCodeCLOUDFORMATIONSTACKNOTEXISTING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueryErrorCode = QueryErrorCode'
  { fromQueryErrorCode ::
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

pattern QueryErrorCodeCLOUDFORMATIONSTACKINACTIVE :: QueryErrorCode
pattern QueryErrorCodeCLOUDFORMATIONSTACKINACTIVE = QueryErrorCode' "CLOUDFORMATION_STACK_INACTIVE"

pattern QueryErrorCodeCLOUDFORMATIONSTACKNOTEXISTING :: QueryErrorCode
pattern QueryErrorCodeCLOUDFORMATIONSTACKNOTEXISTING = QueryErrorCode' "CLOUDFORMATION_STACK_NOT_EXISTING"

{-# COMPLETE
  QueryErrorCodeCLOUDFORMATIONSTACKINACTIVE,
  QueryErrorCodeCLOUDFORMATIONSTACKNOTEXISTING,
  QueryErrorCode'
  #-}

instance Prelude.FromText QueryErrorCode where
  parser = QueryErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueryErrorCode where
  toText (QueryErrorCode' x) = x

instance Prelude.Hashable QueryErrorCode

instance Prelude.NFData QueryErrorCode

instance Prelude.ToByteString QueryErrorCode

instance Prelude.ToQuery QueryErrorCode

instance Prelude.ToHeader QueryErrorCode

instance Prelude.FromJSON QueryErrorCode where
  parseJSON = Prelude.parseJSONText "QueryErrorCode"
