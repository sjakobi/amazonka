{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.OperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.OperationType
  ( OperationType
      ( ..,
        CreateNamespace,
        DeleteNamespace,
        DeregisterInstance,
        RegisterInstance,
        UpdateService
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OperationType = OperationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreateNamespace :: OperationType
pattern CreateNamespace = OperationType' "CREATE_NAMESPACE"

pattern DeleteNamespace :: OperationType
pattern DeleteNamespace = OperationType' "DELETE_NAMESPACE"

pattern DeregisterInstance :: OperationType
pattern DeregisterInstance = OperationType' "DEREGISTER_INSTANCE"

pattern RegisterInstance :: OperationType
pattern RegisterInstance = OperationType' "REGISTER_INSTANCE"

pattern UpdateService :: OperationType
pattern UpdateService = OperationType' "UPDATE_SERVICE"

{-# COMPLETE
  CreateNamespace,
  DeleteNamespace,
  DeregisterInstance,
  RegisterInstance,
  UpdateService,
  OperationType'
  #-}

instance FromText OperationType where
  parser = (OperationType' . mk) <$> takeText

instance ToText OperationType where
  toText (OperationType' ci) = original ci

instance Hashable OperationType

instance NFData OperationType

instance ToByteString OperationType

instance ToQuery OperationType

instance ToHeader OperationType

instance FromJSON OperationType where
  parseJSON = parseJSONText "OperationType"
