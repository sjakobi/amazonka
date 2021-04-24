{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.JobResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.JobResource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Snowball.Types.EC2AMIResource
import Network.AWS.Snowball.Types.LambdaResource
import Network.AWS.Snowball.Types.S3Resource

-- | Contains an array of AWS resource objects. Each object represents an Amazon S3 bucket, an AWS Lambda function, or an Amazon Machine Image (AMI) based on Amazon EC2 that is associated with a particular job.
--
--
--
-- /See:/ 'jobResource' smart constructor.
data JobResource = JobResource'
  { _jrS3Resources ::
      !(Maybe [S3Resource]),
    _jrEC2AMIResources :: !(Maybe [EC2AMIResource]),
    _jrLambdaResources :: !(Maybe [LambdaResource])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrS3Resources' - An array of @S3Resource@ objects.
--
-- * 'jrEC2AMIResources' - The Amazon Machine Images (AMIs) associated with this job.
--
-- * 'jrLambdaResources' - The Python-language Lambda functions for this job.
jobResource ::
  JobResource
jobResource =
  JobResource'
    { _jrS3Resources = Nothing,
      _jrEC2AMIResources = Nothing,
      _jrLambdaResources = Nothing
    }

-- | An array of @S3Resource@ objects.
jrS3Resources :: Lens' JobResource [S3Resource]
jrS3Resources = lens _jrS3Resources (\s a -> s {_jrS3Resources = a}) . _Default . _Coerce

-- | The Amazon Machine Images (AMIs) associated with this job.
jrEC2AMIResources :: Lens' JobResource [EC2AMIResource]
jrEC2AMIResources = lens _jrEC2AMIResources (\s a -> s {_jrEC2AMIResources = a}) . _Default . _Coerce

-- | The Python-language Lambda functions for this job.
jrLambdaResources :: Lens' JobResource [LambdaResource]
jrLambdaResources = lens _jrLambdaResources (\s a -> s {_jrLambdaResources = a}) . _Default . _Coerce

instance FromJSON JobResource where
  parseJSON =
    withObject
      "JobResource"
      ( \x ->
          JobResource'
            <$> (x .:? "S3Resources" .!= mempty)
            <*> (x .:? "Ec2AmiResources" .!= mempty)
            <*> (x .:? "LambdaResources" .!= mempty)
      )

instance Hashable JobResource

instance NFData JobResource

instance ToJSON JobResource where
  toJSON JobResource' {..} =
    object
      ( catMaybes
          [ ("S3Resources" .=) <$> _jrS3Resources,
            ("Ec2AmiResources" .=) <$> _jrEC2AMIResources,
            ("LambdaResources" .=) <$> _jrLambdaResources
          ]
      )
