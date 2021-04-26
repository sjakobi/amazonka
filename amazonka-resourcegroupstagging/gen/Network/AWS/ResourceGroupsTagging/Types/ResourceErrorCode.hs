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
-- Module      : Network.AWS.ResourceGroupsTagging.Types.ResourceErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types.ResourceErrorCode
  ( ResourceErrorCode
      ( ..,
        ResourceErrorCodeInternalServiceException,
        ResourceErrorCodeInvalidParameterException
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceErrorCode = ResourceErrorCode'
  { fromResourceErrorCode ::
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

pattern ResourceErrorCodeInternalServiceException :: ResourceErrorCode
pattern ResourceErrorCodeInternalServiceException = ResourceErrorCode' "InternalServiceException"

pattern ResourceErrorCodeInvalidParameterException :: ResourceErrorCode
pattern ResourceErrorCodeInvalidParameterException = ResourceErrorCode' "InvalidParameterException"

{-# COMPLETE
  ResourceErrorCodeInternalServiceException,
  ResourceErrorCodeInvalidParameterException,
  ResourceErrorCode'
  #-}

instance Prelude.FromText ResourceErrorCode where
  parser = ResourceErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceErrorCode where
  toText (ResourceErrorCode' x) = x

instance Prelude.Hashable ResourceErrorCode

instance Prelude.NFData ResourceErrorCode

instance Prelude.ToByteString ResourceErrorCode

instance Prelude.ToQuery ResourceErrorCode

instance Prelude.ToHeader ResourceErrorCode

instance Prelude.FromJSON ResourceErrorCode where
  parseJSON = Prelude.parseJSONText "ResourceErrorCode"
