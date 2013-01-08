/*
 * Copyright (c) 2012 SnowPlow Analytics Ltd. All rights reserved.
 *
 * This program is licensed to you under the Apache License Version 2.0,
 * and you may not use this file except in compliance with the Apache License Version 2.0.
 * You may obtain a copy of the Apache License Version 2.0 at http://www.apache.org/licenses/LICENSE-2.0.
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the Apache License Version 2.0 is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the Apache License Version 2.0 for the specific language governing permissions and limitations there under.
 */
package com.snowplowanalytics.snowplow.hadoop.etl
package loaders

/**
 * Companion object to the CollectorLoader.
 * Contains factory methods.
 */
object CollectorLoader {
  
  /**
   * Factory to return a CollectorLoader
   * based on the supplied collector
   * identifier.
   *
   * @param collector Identifier for the collector
   * @return a CollectorLoader object,
   *         Option-boxed, or None if `collector`
   *         was not recognised
   */
  def getCollectorLoader(collector: String): Option[CollectorLoader] = collector match {
    case "cloudfront" => Some(CloudFrontLoader)
    case "clj-tomcat" => Some(CloudFrontLoader)
    case _            => None
  }
}

/**
 * All loaders must implement this
 * abstract base class.
 */
abstract class CollectorLoader {
  
  /**
   * Converts the source string
   * into a CanonicalInput.
   *
   * @param line The line of data to convert
   * @return a CanonicalInput object
   */
  def toCanonicalInput(line: String): CanonicalInput
}