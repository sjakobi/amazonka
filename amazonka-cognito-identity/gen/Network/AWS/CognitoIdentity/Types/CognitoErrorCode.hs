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
-- Module      : Network.AWS.CognitoIdentity.Types.CognitoErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.CognitoErrorCode
  ( CognitoErrorCode
      ( ..,
        CognitoErrorCodeAccessDenied,
        CognitoErrorCodeInternalServerError
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CognitoErrorCode = CognitoErrorCode'
  { fromCognitoErrorCode ::
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

pattern CognitoErrorCodeAccessDenied :: CognitoErrorCode
pattern CognitoErrorCodeAccessDenied = CognitoErrorCode' "AccessDenied"

pattern CognitoErrorCodeInternalServerError :: CognitoErrorCode
pattern CognitoErrorCodeInternalServerError = CognitoErrorCode' "InternalServerError"

{-# COMPLETE
  CognitoErrorCodeAccessDenied,
  CognitoErrorCodeInternalServerError,
  CognitoErrorCode'
  #-}

instance Prelude.FromText CognitoErrorCode where
  parser = CognitoErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CognitoErrorCode where
  toText (CognitoErrorCode' x) = x

instance Prelude.Hashable CognitoErrorCode

instance Prelude.NFData CognitoErrorCode

instance Prelude.ToByteString CognitoErrorCode

instance Prelude.ToQuery CognitoErrorCode

instance Prelude.ToHeader CognitoErrorCode

instance Prelude.FromJSON CognitoErrorCode where
  parseJSON = Prelude.parseJSONText "CognitoErrorCode"
