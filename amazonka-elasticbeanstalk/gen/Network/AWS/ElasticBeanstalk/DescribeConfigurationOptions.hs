{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.DescribeConfigurationOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.
module Network.AWS.ElasticBeanstalk.DescribeConfigurationOptions
  ( -- * Creating a Request
    describeConfigurationOptions,
    DescribeConfigurationOptions,

    -- * Request Lenses
    dcoTemplateName,
    dcoOptions,
    dcoSolutionStackName,
    dcoEnvironmentName,
    dcoPlatformARN,
    dcoApplicationName,

    -- * Destructuring the Response
    describeConfigurationOptionsResponse,
    DescribeConfigurationOptionsResponse,

    -- * Response Lenses
    dcorrsOptions,
    dcorrsSolutionStackName,
    dcorrsPlatformARN,
    dcorrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Result message containing a list of application version descriptions.
--
--
--
-- /See:/ 'describeConfigurationOptions' smart constructor.
data DescribeConfigurationOptions = DescribeConfigurationOptions'
  { _dcoTemplateName ::
      !(Maybe Text),
    _dcoOptions ::
      !( Maybe
           [OptionSpecification]
       ),
    _dcoSolutionStackName ::
      !(Maybe Text),
    _dcoEnvironmentName ::
      !(Maybe Text),
    _dcoPlatformARN ::
      !(Maybe Text),
    _dcoApplicationName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConfigurationOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcoTemplateName' - The name of the configuration template whose configuration options you want to describe.
--
-- * 'dcoOptions' - If specified, restricts the descriptions to only the specified options.
--
-- * 'dcoSolutionStackName' - The name of the solution stack whose configuration options you want to describe.
--
-- * 'dcoEnvironmentName' - The name of the environment whose configuration options you want to describe.
--
-- * 'dcoPlatformARN' - The ARN of the custom platform.
--
-- * 'dcoApplicationName' - The name of the application associated with the configuration template or environment. Only needed if you want to describe the configuration options associated with either the configuration template or environment.
describeConfigurationOptions ::
  DescribeConfigurationOptions
describeConfigurationOptions =
  DescribeConfigurationOptions'
    { _dcoTemplateName =
        Nothing,
      _dcoOptions = Nothing,
      _dcoSolutionStackName = Nothing,
      _dcoEnvironmentName = Nothing,
      _dcoPlatformARN = Nothing,
      _dcoApplicationName = Nothing
    }

-- | The name of the configuration template whose configuration options you want to describe.
dcoTemplateName :: Lens' DescribeConfigurationOptions (Maybe Text)
dcoTemplateName = lens _dcoTemplateName (\s a -> s {_dcoTemplateName = a})

-- | If specified, restricts the descriptions to only the specified options.
dcoOptions :: Lens' DescribeConfigurationOptions [OptionSpecification]
dcoOptions = lens _dcoOptions (\s a -> s {_dcoOptions = a}) . _Default . _Coerce

-- | The name of the solution stack whose configuration options you want to describe.
dcoSolutionStackName :: Lens' DescribeConfigurationOptions (Maybe Text)
dcoSolutionStackName = lens _dcoSolutionStackName (\s a -> s {_dcoSolutionStackName = a})

-- | The name of the environment whose configuration options you want to describe.
dcoEnvironmentName :: Lens' DescribeConfigurationOptions (Maybe Text)
dcoEnvironmentName = lens _dcoEnvironmentName (\s a -> s {_dcoEnvironmentName = a})

-- | The ARN of the custom platform.
dcoPlatformARN :: Lens' DescribeConfigurationOptions (Maybe Text)
dcoPlatformARN = lens _dcoPlatformARN (\s a -> s {_dcoPlatformARN = a})

-- | The name of the application associated with the configuration template or environment. Only needed if you want to describe the configuration options associated with either the configuration template or environment.
dcoApplicationName :: Lens' DescribeConfigurationOptions (Maybe Text)
dcoApplicationName = lens _dcoApplicationName (\s a -> s {_dcoApplicationName = a})

instance AWSRequest DescribeConfigurationOptions where
  type
    Rs DescribeConfigurationOptions =
      DescribeConfigurationOptionsResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "DescribeConfigurationOptionsResult"
      ( \s h x ->
          DescribeConfigurationOptionsResponse'
            <$> ( x .@? "Options" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "SolutionStackName")
            <*> (x .@? "PlatformArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConfigurationOptions

instance NFData DescribeConfigurationOptions

instance ToHeaders DescribeConfigurationOptions where
  toHeaders = const mempty

instance ToPath DescribeConfigurationOptions where
  toPath = const "/"

instance ToQuery DescribeConfigurationOptions where
  toQuery DescribeConfigurationOptions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeConfigurationOptions" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "TemplateName" =: _dcoTemplateName,
        "Options"
          =: toQuery (toQueryList "member" <$> _dcoOptions),
        "SolutionStackName" =: _dcoSolutionStackName,
        "EnvironmentName" =: _dcoEnvironmentName,
        "PlatformArn" =: _dcoPlatformARN,
        "ApplicationName" =: _dcoApplicationName
      ]

-- | Describes the settings for a specified configuration set.
--
--
--
-- /See:/ 'describeConfigurationOptionsResponse' smart constructor.
data DescribeConfigurationOptionsResponse = DescribeConfigurationOptionsResponse'
  { _dcorrsOptions ::
      !( Maybe
           [ConfigurationOptionDescription]
       ),
    _dcorrsSolutionStackName ::
      !( Maybe
           Text
       ),
    _dcorrsPlatformARN ::
      !( Maybe
           Text
       ),
    _dcorrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConfigurationOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcorrsOptions' - A list of 'ConfigurationOptionDescription' .
--
-- * 'dcorrsSolutionStackName' - The name of the solution stack these configuration options belong to.
--
-- * 'dcorrsPlatformARN' - The ARN of the platform version.
--
-- * 'dcorrsResponseStatus' - -- | The response status code.
describeConfigurationOptionsResponse ::
  -- | 'dcorrsResponseStatus'
  Int ->
  DescribeConfigurationOptionsResponse
describeConfigurationOptionsResponse pResponseStatus_ =
  DescribeConfigurationOptionsResponse'
    { _dcorrsOptions =
        Nothing,
      _dcorrsSolutionStackName = Nothing,
      _dcorrsPlatformARN = Nothing,
      _dcorrsResponseStatus =
        pResponseStatus_
    }

-- | A list of 'ConfigurationOptionDescription' .
dcorrsOptions :: Lens' DescribeConfigurationOptionsResponse [ConfigurationOptionDescription]
dcorrsOptions = lens _dcorrsOptions (\s a -> s {_dcorrsOptions = a}) . _Default . _Coerce

-- | The name of the solution stack these configuration options belong to.
dcorrsSolutionStackName :: Lens' DescribeConfigurationOptionsResponse (Maybe Text)
dcorrsSolutionStackName = lens _dcorrsSolutionStackName (\s a -> s {_dcorrsSolutionStackName = a})

-- | The ARN of the platform version.
dcorrsPlatformARN :: Lens' DescribeConfigurationOptionsResponse (Maybe Text)
dcorrsPlatformARN = lens _dcorrsPlatformARN (\s a -> s {_dcorrsPlatformARN = a})

-- | -- | The response status code.
dcorrsResponseStatus :: Lens' DescribeConfigurationOptionsResponse Int
dcorrsResponseStatus = lens _dcorrsResponseStatus (\s a -> s {_dcorrsResponseStatus = a})

instance NFData DescribeConfigurationOptionsResponse
