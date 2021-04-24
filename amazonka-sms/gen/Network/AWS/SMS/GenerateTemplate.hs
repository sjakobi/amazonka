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
-- Module      : Network.AWS.SMS.GenerateTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an AWS CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
module Network.AWS.SMS.GenerateTemplate
  ( -- * Creating a Request
    generateTemplate,
    GenerateTemplate,

    -- * Request Lenses
    gtAppId,
    gtTemplateFormat,

    -- * Destructuring the Response
    generateTemplateResponse,
    GenerateTemplateResponse,

    -- * Response Lenses
    gtrrsS3Location,
    gtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'generateTemplate' smart constructor.
data GenerateTemplate = GenerateTemplate'
  { _gtAppId ::
      !(Maybe Text),
    _gtTemplateFormat ::
      !(Maybe OutputFormat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GenerateTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtAppId' - The ID of the application associated with the AWS CloudFormation template.
--
-- * 'gtTemplateFormat' - The format for generating the AWS CloudFormation template.
generateTemplate ::
  GenerateTemplate
generateTemplate =
  GenerateTemplate'
    { _gtAppId = Nothing,
      _gtTemplateFormat = Nothing
    }

-- | The ID of the application associated with the AWS CloudFormation template.
gtAppId :: Lens' GenerateTemplate (Maybe Text)
gtAppId = lens _gtAppId (\s a -> s {_gtAppId = a})

-- | The format for generating the AWS CloudFormation template.
gtTemplateFormat :: Lens' GenerateTemplate (Maybe OutputFormat)
gtTemplateFormat = lens _gtTemplateFormat (\s a -> s {_gtTemplateFormat = a})

instance AWSRequest GenerateTemplate where
  type Rs GenerateTemplate = GenerateTemplateResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GenerateTemplateResponse'
            <$> (x .?> "s3Location") <*> (pure (fromEnum s))
      )

instance Hashable GenerateTemplate

instance NFData GenerateTemplate

instance ToHeaders GenerateTemplate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GenerateTemplate" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GenerateTemplate where
  toJSON GenerateTemplate' {..} =
    object
      ( catMaybes
          [ ("appId" .=) <$> _gtAppId,
            ("templateFormat" .=) <$> _gtTemplateFormat
          ]
      )

instance ToPath GenerateTemplate where
  toPath = const "/"

instance ToQuery GenerateTemplate where
  toQuery = const mempty

-- | /See:/ 'generateTemplateResponse' smart constructor.
data GenerateTemplateResponse = GenerateTemplateResponse'
  { _gtrrsS3Location ::
      !(Maybe S3Location),
    _gtrrsResponseStatus ::
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

-- | Creates a value of 'GenerateTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtrrsS3Location' - The location of the Amazon S3 object.
--
-- * 'gtrrsResponseStatus' - -- | The response status code.
generateTemplateResponse ::
  -- | 'gtrrsResponseStatus'
  Int ->
  GenerateTemplateResponse
generateTemplateResponse pResponseStatus_ =
  GenerateTemplateResponse'
    { _gtrrsS3Location =
        Nothing,
      _gtrrsResponseStatus = pResponseStatus_
    }

-- | The location of the Amazon S3 object.
gtrrsS3Location :: Lens' GenerateTemplateResponse (Maybe S3Location)
gtrrsS3Location = lens _gtrrsS3Location (\s a -> s {_gtrrsS3Location = a})

-- | -- | The response status code.
gtrrsResponseStatus :: Lens' GenerateTemplateResponse Int
gtrrsResponseStatus = lens _gtrrsResponseStatus (\s a -> s {_gtrrsResponseStatus = a})

instance NFData GenerateTemplateResponse
