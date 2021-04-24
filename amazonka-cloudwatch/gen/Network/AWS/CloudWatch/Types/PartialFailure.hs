{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.PartialFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.PartialFailure where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | This array is empty if the API operation was successful for all the rules specified in the request. If the operation could not process one of the rules, the following data is returned for each of those rules.
--
--
--
-- /See:/ 'partialFailure' smart constructor.
data PartialFailure = PartialFailure'
  { _pfExceptionType ::
      !(Maybe Text),
    _pfFailureCode :: !(Maybe Text),
    _pfFailureDescription :: !(Maybe Text),
    _pfFailureResource :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PartialFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfExceptionType' - The type of error.
--
-- * 'pfFailureCode' - The code of the error.
--
-- * 'pfFailureDescription' - A description of the error.
--
-- * 'pfFailureResource' - The specified rule that could not be deleted.
partialFailure ::
  PartialFailure
partialFailure =
  PartialFailure'
    { _pfExceptionType = Nothing,
      _pfFailureCode = Nothing,
      _pfFailureDescription = Nothing,
      _pfFailureResource = Nothing
    }

-- | The type of error.
pfExceptionType :: Lens' PartialFailure (Maybe Text)
pfExceptionType = lens _pfExceptionType (\s a -> s {_pfExceptionType = a})

-- | The code of the error.
pfFailureCode :: Lens' PartialFailure (Maybe Text)
pfFailureCode = lens _pfFailureCode (\s a -> s {_pfFailureCode = a})

-- | A description of the error.
pfFailureDescription :: Lens' PartialFailure (Maybe Text)
pfFailureDescription = lens _pfFailureDescription (\s a -> s {_pfFailureDescription = a})

-- | The specified rule that could not be deleted.
pfFailureResource :: Lens' PartialFailure (Maybe Text)
pfFailureResource = lens _pfFailureResource (\s a -> s {_pfFailureResource = a})

instance FromXML PartialFailure where
  parseXML x =
    PartialFailure'
      <$> (x .@? "ExceptionType")
      <*> (x .@? "FailureCode")
      <*> (x .@? "FailureDescription")
      <*> (x .@? "FailureResource")

instance Hashable PartialFailure

instance NFData PartialFailure
