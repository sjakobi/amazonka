{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types.SupportService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.SupportService where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Support.Types.Category

-- | Information about an AWS service returned by the 'DescribeServices' operation.
--
--
--
-- /See:/ 'supportService' smart constructor.
data SupportService = SupportService'
  { _ssCode ::
      !(Maybe Text),
    _ssName :: !(Maybe Text),
    _ssCategories :: !(Maybe [Category])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SupportService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssCode' - The code for an AWS service returned by the 'DescribeServices' response. The @name@ element contains the corresponding friendly name.
--
-- * 'ssName' - The friendly name for an AWS service. The @code@ element contains the corresponding code.
--
-- * 'ssCategories' - A list of categories that describe the type of support issue a case describes. Categories consist of a category name and a category code. Category names and codes are passed to AWS Support when you call 'CreateCase' .
supportService ::
  SupportService
supportService =
  SupportService'
    { _ssCode = Nothing,
      _ssName = Nothing,
      _ssCategories = Nothing
    }

-- | The code for an AWS service returned by the 'DescribeServices' response. The @name@ element contains the corresponding friendly name.
ssCode :: Lens' SupportService (Maybe Text)
ssCode = lens _ssCode (\s a -> s {_ssCode = a})

-- | The friendly name for an AWS service. The @code@ element contains the corresponding code.
ssName :: Lens' SupportService (Maybe Text)
ssName = lens _ssName (\s a -> s {_ssName = a})

-- | A list of categories that describe the type of support issue a case describes. Categories consist of a category name and a category code. Category names and codes are passed to AWS Support when you call 'CreateCase' .
ssCategories :: Lens' SupportService [Category]
ssCategories = lens _ssCategories (\s a -> s {_ssCategories = a}) . _Default . _Coerce

instance FromJSON SupportService where
  parseJSON =
    withObject
      "SupportService"
      ( \x ->
          SupportService'
            <$> (x .:? "code")
            <*> (x .:? "name")
            <*> (x .:? "categories" .!= mempty)
      )

instance Hashable SupportService

instance NFData SupportService
