{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateErrorCode
  ( LaunchTemplateErrorCode
      ( ..,
        LTECLaunchTemplateIdDoesNotExist,
        LTECLaunchTemplateIdMalformed,
        LTECLaunchTemplateNameDoesNotExist,
        LTECLaunchTemplateNameMalformed,
        LTECLaunchTemplateVersionDoesNotExist,
        LTECUnexpectedError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data LaunchTemplateErrorCode
  = LaunchTemplateErrorCode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LTECLaunchTemplateIdDoesNotExist :: LaunchTemplateErrorCode
pattern LTECLaunchTemplateIdDoesNotExist = LaunchTemplateErrorCode' "launchTemplateIdDoesNotExist"

pattern LTECLaunchTemplateIdMalformed :: LaunchTemplateErrorCode
pattern LTECLaunchTemplateIdMalformed = LaunchTemplateErrorCode' "launchTemplateIdMalformed"

pattern LTECLaunchTemplateNameDoesNotExist :: LaunchTemplateErrorCode
pattern LTECLaunchTemplateNameDoesNotExist = LaunchTemplateErrorCode' "launchTemplateNameDoesNotExist"

pattern LTECLaunchTemplateNameMalformed :: LaunchTemplateErrorCode
pattern LTECLaunchTemplateNameMalformed = LaunchTemplateErrorCode' "launchTemplateNameMalformed"

pattern LTECLaunchTemplateVersionDoesNotExist :: LaunchTemplateErrorCode
pattern LTECLaunchTemplateVersionDoesNotExist = LaunchTemplateErrorCode' "launchTemplateVersionDoesNotExist"

pattern LTECUnexpectedError :: LaunchTemplateErrorCode
pattern LTECUnexpectedError = LaunchTemplateErrorCode' "unexpectedError"

{-# COMPLETE
  LTECLaunchTemplateIdDoesNotExist,
  LTECLaunchTemplateIdMalformed,
  LTECLaunchTemplateNameDoesNotExist,
  LTECLaunchTemplateNameMalformed,
  LTECLaunchTemplateVersionDoesNotExist,
  LTECUnexpectedError,
  LaunchTemplateErrorCode'
  #-}

instance FromText LaunchTemplateErrorCode where
  parser = (LaunchTemplateErrorCode' . mk) <$> takeText

instance ToText LaunchTemplateErrorCode where
  toText (LaunchTemplateErrorCode' ci) = original ci

instance Hashable LaunchTemplateErrorCode

instance NFData LaunchTemplateErrorCode

instance ToByteString LaunchTemplateErrorCode

instance ToQuery LaunchTemplateErrorCode

instance ToHeader LaunchTemplateErrorCode

instance FromXML LaunchTemplateErrorCode where
  parseXML = parseXMLText "LaunchTemplateErrorCode"
